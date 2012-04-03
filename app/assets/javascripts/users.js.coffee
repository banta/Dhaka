$(document).ready ->
  $('.is-admin').delegate 'a.admin', 'ajax:success', ->
    $.sticky 'Successfully updated permissions'
    $(this).text ->
      return if $(this).text() is 'Revoke Admin Rights' then 'Grant Admin Rights' else 'Revoke Admin Rights'

  $('.is-seller').delegate 'a.seller', 'ajax:success', ->
    $.sticky 'Successfully updated permissions'
    $(this).text ->
      return if $(this).text() is 'Revoke Seller Rights' then 'Grant Seller Rights' else 'Revoke Seller Rights'
  $('.lock').delegate 'a.lock', 'ajax:success', ->
    $.sticky 'Successfully locked/unlocked user'
    $(this).text ->
      return if $(this).text() is 'Unlock Account' then 'Lock Account' else 'Unlock Account'