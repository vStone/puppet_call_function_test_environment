node 'default' {

  include '::call_me'

  $message = call_me::pfunction()
  notify {'direct function call': message => $message, } 

  # THIS BLOCK FAILS
  #$message2 = call('call_me::pfunction')
  #notify{'call(call_me::pfunction)': message => $message2, }

  $deferred = Deferred('call_me::pfunction')
  $message3 = $deferred.call()
  notify {'deferred, function name hardcoded': message => $message3, }

  $function_name = 'call_me::pfunction'
  $deferred2 = Deferred($function_name)
  $message4 = $deferred2.call()
  notify {'deferred, function name in variable': message => $message4, }

 

}
