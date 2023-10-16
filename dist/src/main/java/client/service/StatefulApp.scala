package client.service

/** Generated based on AuthenticationService
*/
case class StatefulApp[K, C, S, E](
  businessLogic: morphir.sdk.Maybe.Maybe[S] => C => (morphir.sdk.Maybe.Maybe[S], E)
){}