class Client
  API_ENDPOINT = "https://api.perplexity.ai/chat/completions".freeze

  def initialize(api_key: nil)
    @uri = URI(API_ENDPOINT)
    @api_key = api_key || PplxApi.config.api_key
  end

  def generate_response(model: 'mistral-7b-instruct', messages:, max_tokens: nil, temperature: nil, top_p: nil, top_k: nil, stream: false, presence_penalty: nil, frequency_penalty: nil)
    headers = {
      "Content-Type" => "application/json",
      "Authorization" => "Bearer #{@api_key}"
    }

    body = {
      model: model,
      messages: messages,
      max_tokens: max_tokens,
      temperature: temperature,
      top_p: top_p,
      top_k: top_k,
      stream: stream,
      presence_penalty: presence_penalty,
      frequency_penalty: frequency_penalty
    }.compact

    request = Net::HTTP::Post.new(@uri, 'Content-Type' => 'application/json')
    request.body = body.to_json

    response = Net::HTTP.start(@uri.hostname, @uri.port, use_ssl: true) do |http|
      http.request(request)
    end

    case response
    when Net::HTTPSuccess
      JSON.parse(response.body)
    when Net::HTTPUnprocessableEntity
      raise "Validation Error"
    else
      raise "Unknown Error: #{response.code}"
    end
  end
end