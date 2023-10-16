module Client.Service.AuthenticationService exposing (..)

type alias OrderRequest =
    { product: String,
      quantity: Int,
      price: Float,
      side: String,
      tradeType: String,
      clientId: Int,
      portfolioId: Int
    }

calculateOrderValue: OrderRequest -> Float
calculateOrderValue orderRequest =
    if orderRequest.side == "BUY" then
         -orderRequest.price * toFloat(orderRequest.quantity)
    else
        orderRequest.price * toFloat(orderRequest.quantity)


