import ballerina/http;
import ballerina/io;

service / on new http:Listener(9091) {

    resource function get .(http:Request req) returns string {
        string requestID = req.getHeader("x-request-id") ?: "unknown";
        io:println("service2 received request with x-request-id: ", requestID);
        return "Hello from service2!";
    }
}
