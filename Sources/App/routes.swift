import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        //"https://reqres.in/api/users?page=2"
        let response = try await req.client.get("https://tts.turkiyeshell.com/Default.aspx")
        
        return String(buffer: response.body!)
    }
}



