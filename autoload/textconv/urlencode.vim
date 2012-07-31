" Source: http://pastebin.com/MPGtA3hp
" Context:
" http://www.reddit.com/r/vim/comments/vbvzy/the_vim_holy_grail_why_the_hell_is_the_esc_key_so/c53iq0i?context=3

function! textconv#urlencode#ToUrlEncoding()
    silent s/e/%20/e
    silent s/!/%21/e
    silent s/ /%22/e
    silent s/#/%23/e
    silent s/$/%24/e
	" Disable % because each substitution is executed for the whole line. If
	" this one wasn't commented it would transform all the already transformed
	" %FB in %25FB.
    " silent s/%/%25/e
    silent s/&/%26/e
    silent s/'/%27/e
    silent s/(/%28/e
    silent s/)/%29/e
    silent s/*/%2A/e
    silent s/+/%2B/e
    silent s/,/%2C/e
    silent s/\-/%2D/e
    silent s/\./%2E/e
    silent s/\//%2F/e
    silent s/:/%3A/e
    silent s/;/%3B/e
    silent s/</%3C/e
    silent s/=/%3D/e
    silent s/>/%3E/e
    silent s/?/%3F/e
    silent s/@/%40/e
    silent s/\[/%5B/e
    silent s/\\/%5C/e
    silent s/\]/%5D/e
    silent s/\^/%5E/e
    silent s/_/%5F/e
    silent s/`/%60/e
    silent s/{/%7B/e
    silent s/|/%7C/e
    silent s/}/%7D/e
    silent s/~/%7E/e
    silent s/€/%80/e
    silent s/‚/%82/e
    silent s/ƒ/%83/e
    silent s/„/%84/e
    silent s/…/%85/e
    silent s/†/%86/e
    silent s/‡/%87/e
    silent s/ˆ/%88/e
    silent s/‰/%89/e
    silent s/Š/%8A/e
    silent s/‹/%8B/e
    silent s/Œ/%8C/e
    silent s/Ž/%8E/e
    silent s/‘/%91/e
    silent s/’/%92/e
    silent s/“/%93/e
    silent s/”/%94/e
    silent s/•/%95/e
    silent s/–/%96/e
    silent s/—/%97/e
    silent s/˜/%98/e
    silent s/™/%99/e
    silent s/š/%9A/e
    silent s/›/%9B/e
    silent s/œ/%9C/e
    silent s/ž/%9E/e
    silent s/Ÿ/%9F/e
    silent s/¡/%A1/e
    silent s/¢/%A2/e
    silent s/£/%A3/e
    silent s/¥/%A5/e
    silent s/|/%A6/e
    silent s/§/%A7/e
    silent s/¨/%A8/e
    silent s/©/%A9/e
    silent s/ª/%AA/e
    silent s/«/%AB/e
    silent s/¬/%AC/e
    silent s/¯/%AD/e
    silent s/®/%AE/e
    silent s/¯/%AF/e
    silent s/°/%B0/e
    silent s/±/%B1/e
    silent s/²/%B2/e
    silent s/³/%B3/e
    silent s/´/%B4/e
    silent s/µ/%B5/e
    silent s/¶/%B6/e
    silent s/·/%B7/e
    silent s/¸/%B8/e
    silent s/¹/%B9/e
    silent s/º/%BA/e
    silent s/»/%BB/e
    silent s/¼/%BC/e
    silent s/½/%BD/e
    silent s/¾/%BE/e
    silent s/¿/%BF/e
    silent s/À/%C0/e
    silent s/Á/%C1/e
    silent s/Â/%C2/e
    silent s/Ã/%C3/e
    silent s/Ä/%C4/e
    silent s/Å/%C5/e
    silent s/Æ/%C6/e
    silent s/Ç/%C7/e
    silent s/È/%C8/e
    silent s/É/%C9/e
    silent s/Ê/%CA/e
    silent s/Ë/%CB/e
    silent s/Ì/%CC/e
    silent s/Í/%CD/e
    silent s/Î/%CE/e
    silent s/Ï/%CF/e
    silent s/Ð/%D0/e
    silent s/Ñ/%D1/e
    silent s/Ò/%D2/e
    silent s/Ó/%D3/e
    silent s/Ô/%D4/e
    silent s/Õ/%D5/e
    silent s/Ö/%D6/e
    silent s/Ø/%D8/e
    silent s/Ù/%D9/e
    silent s/Ú/%DA/e
    silent s/Û/%DB/e
    silent s/Ü/%DC/e
    silent s/Ý/%DD/e
    silent s/Þ/%DE/e
    silent s/ß/%DF/e
    silent s/à/%E0/e
    silent s/á/%E1/e
    silent s/â/%E2/e
    silent s/ã/%E3/e
    silent s/ä/%E4/e
    silent s/å/%E5/e
    silent s/æ/%E6/e
    silent s/ç/%E7/e
    silent s/è/%E8/e
    silent s/é/%E9/e
    silent s/ê/%EA/e
    silent s/ë/%EB/e
    silent s/ì/%EC/e
    silent s/í/%ED/e
    silent s/î/%EE/e
    silent s/ï/%EF/e
    silent s/ð/%F0/e
    silent s/ñ/%F1/e
    silent s/ò/%F2/e
    silent s/ó/%F3/e
    silent s/ô/%F4/e
    silent s/õ/%F5/e
    silent s/ö/%F6/e
    silent s/÷/%F7/e
    silent s/ø/%F8/e
    silent s/ù/%F9/e
    silent s/ú/%FA/e
    silent s/û/%FB/e
    silent s/ü/%FC/e
    silent s/ý/%FD/e
    silent s/þ/%FE/e
    silent s/ÿ/%FF/e
endfunction

" Transform UrlEncoded characters to normal.
" Transformer les caractères UrlEncodés en caractères normaux.
function! textconv#urlencode#FromUrlEncoding()
    silent s/%20/e/e
    silent s/%21/!/e
    silent s/%22/ /e
    silent s/%23/#/e
    silent s/%24/$/e
    " silent s/%25/%/e
    silent s/%26/&/e
    silent s/%27/'/e
    silent s/%28/(/e
    silent s/%29/)/e
    silent s/%2A/*/e
    silent s/%2B/+/e
    silent s/%2C/,/e
    silent s/%2D/-/e
    silent s/%2E/./e
    silent s/%2F/\//e
    silent s/%3A/:/e
    silent s/%3B/;/e
    silent s/%3C/</e
    silent s/%3D/=/e
    silent s/%3E/>/e
    silent s/%3F/?/e
    silent s/%40/@/e
    silent s/%5B/[/e
    silent s/%5C/\\/e
    silent s/%5D/]/e
    silent s/%5E/^/e
    silent s/%5F/_/e
    silent s/%60/`/e
    silent s/%7B/{/e
    silent s/%7C/|/e
    silent s/%7D/}/e
    silent s/%7E/~/e
    silent s/%80/€/e
    silent s/%82/‚/e
    silent s/%83/ƒ/e
    silent s/%84/„/e
    silent s/%85/…/e
    silent s/%86/†/e
    silent s/%87/‡/e
    silent s/%88/ˆ/e
    silent s/%89/‰/e
    silent s/%8A/Š/e
    silent s/%8B/‹/e
    silent s/%8C/Œ/e
    silent s/%8E/Ž/e
    silent s/%91/‘/e
    silent s/%92/’/e
    silent s/%93/“/e
    silent s/%94/”/e
    silent s/%95/•/e
    silent s/%96/–/e
    silent s/%97/—/e
    silent s/%98/˜/e
    silent s/%99/™/e
    silent s/%9A/š/e
    silent s/%9B/›/e
    silent s/%9C/œ/e
    silent s/%9D/ /e
    silent s/%9E/ž/e
    silent s/%9F/Ÿ/e
    silent s/%A1/¡/e
    silent s/%A2/¢/e
    silent s/%A3/£/e
    silent s/%A5/¥/e
    silent s/%A6/|/e
    silent s/%A7/§/e
    silent s/%A8/¨/e
    silent s/%A9/©/e
    silent s/%AA/ª/e
    silent s/%AB/«/e
    silent s/%AC/¬/e
    silent s/%AD/¯/e
    silent s/%AE/®/e
    silent s/%AF/¯/e
    silent s/%B0/°/e
    silent s/%B1/±/e
    silent s/%B2/²/e
    silent s/%B3/³/e
    silent s/%B4/´/e
    silent s/%B5/µ/e
    silent s/%B6/¶/e
    silent s/%B7/·/e
    silent s/%B8/¸/e
    silent s/%B9/¹/e
    silent s/%BA/º/e
    silent s/%BB/»/e
    silent s/%BC/¼/e
    silent s/%BD/½/e
    silent s/%BE/¾/e
    silent s/%BF/¿/e
    silent s/%C0/À/e
    silent s/%C1/Á/e
    silent s/%C2/Â/e
    silent s/%C3/Ã/e
    silent s/%C4/Ä/e
    silent s/%C5/Å/e
    silent s/%C6/Æ/e
    silent s/%C7/Ç/e
    silent s/%C8/È/e
    silent s/%C9/É/e
    silent s/%CA/Ê/e
    silent s/%CB/Ë/e
    silent s/%CC/Ì/e
    silent s/%CD/Í/e
    silent s/%CE/Î/e
    silent s/%CF/Ï/e
    silent s/%D0/Ð/e
    silent s/%D1/Ñ/e
    silent s/%D2/Ò/e
    silent s/%D3/Ó/e
    silent s/%D4/Ô/e
    silent s/%D5/Õ/e
    silent s/%D6/Ö/e
    silent s/%D8/Ø/e
    silent s/%D9/Ù/e
    silent s/%DA/Ú/e
    silent s/%DB/Û/e
    silent s/%DC/Ü/e
    silent s/%DD/Ý/e
    silent s/%DE/Þ/e
    silent s/%DF/ß/e
    silent s/%E0/à/e
    silent s/%E1/á/e
    silent s/%E2/â/e
    silent s/%E3/ã/e
    silent s/%E4/ä/e
    silent s/%E5/å/e
    silent s/%E6/æ/e
    silent s/%E7/ç/e
    silent s/%E8/è/e
    silent s/%E9/é/e
    silent s/%EA/ê/e
    silent s/%EB/ë/e
    silent s/%EC/ì/e
    silent s/%ED/í/e
    silent s/%EE/î/e
    silent s/%EF/ï/e
    silent s/%F0/ð/e
    silent s/%F1/ñ/e
    silent s/%F2/ò/e
    silent s/%F3/ó/e
    silent s/%F4/ô/e
    silent s/%F5/õ/e
    silent s/%F6/ö/e
    silent s/%F7/÷/e
    silent s/%F8/ø/e
    silent s/%F9/ù/e
    silent s/%FA/ú/e
    silent s/%FB/û/e
    silent s/%FC/ü/e
    silent s/%FD/ý/e
    silent s/%FE/þ/e
    silent s/%FF/ÿ/e
endfunction
