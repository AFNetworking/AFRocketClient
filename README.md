# AFRocketClient

[Rocket](http://rocket.github.io) is a technique for building real-time functionality on top of REST web services that leverages web standards like [Server-Sent Events](http://dev.w3.org/html5/eventsource/) and [JSON Patch](http://tools.ietf.org/html/rfc6902).

`AFEventSource` is an Objective-C implementation of the `EventSource` DOM API. A persistent HTTP connection is opened to a host, which streams events to the event source, to be dispatched to listeners. Messages streamed to the event source formatted as JSON Patch documents are translated into arrays of `AFJSONPatchOperation` objects. These patch operations can be applied to the persistent data set fetched from the server.

#### Rocket Example

```objective-c
NSURL *URL = [NSURL URLWithString:@"http://example.com"];
AFRocketClient *client = [[AFRocketClient alloc] init];
[client SUBSCRIBE:@"/resources" usingBlock:^(NSArray *operations, NSError *error) {
    for (AFJSONPatchOperation *operation in operations) {
        switch (operation.type) {
            case AFJSONAddOperationType:
                [resources addObject:operation.value];
                break;
            default:
                break;
        }
    }
} error:nil]
```

## Contact

Follow AFNetworking on Twitter ([@AFNetworking](https://twitter.com/AFNetworking))

### Creators

[Mattt Thompson](http://github.com/mattt)  
[@mattt](https://twitter.com/mattt)

## License

AFNetworking is available under the MIT license. See the LICENSE file for more info.
