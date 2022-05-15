defmodule ReqEasyHTML do
  def attach(request) do
    Req.Request.append_response_steps(request, req_easyhtml_decode: &decode/1)
  end

  defp decode({request, response}) do
    case Req.Response.get_header(response, "content-type") do
      ["text/html" <> _] ->
        response = update_in(response.body, &EasyHTML.parse!/1)
        {request, response}

      _other ->
        {request, response}
    end
  end
end
