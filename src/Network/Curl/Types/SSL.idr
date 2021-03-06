module Network.Curl.Types.SSL

import Network.Curl.Types.Code
import Util
import Derive.Enum
%language ElabReflection

data CurlSSLBackend
  = CURLSSLBACKEND_NONE -- 0,
  | CURLSSLBACKEND_OPENSSL -- 1,
  | CURLSSLBACKEND_GNUTLS -- 2,
  | CURLSSLBACKEND_NSS -- 3,
  | CURLSSLBACKEND_GSKIT -- 5,
  | CURLSSLBACKEND_POLARSSL -- 6, /* deprecated */
  | CURLSSLBACKEND_WOLFSSL -- 7,
  | CURLSSLBACKEND_SCHANNEL -- 8,
  | CURLSSLBACKEND_SECURETRANSPORT -- 9,
  | CURLSSLBACKEND_AXTLS -- 10, /* deprecated */
  | CURLSSLBACKEND_MBEDTLS -- 11,
  | CURLSSLBACKEND_MESALINK -- 12,
  | CURLSSLBACKEND_BEARSSL -- 13

Show CurlSSLBackend where
  show = showEnum

Eq CurlSSLBackend where
  (==) = eqEnum

Ord CurlSSLBackend where
  compare = compareEnum

ToCode CurlSSLBackend where
  toCode = enumTo [0,1,2,3, 5,6,7,8,9,10,11,12,13]

FromCode CurlSSLBackend where
  unsafeFromCode = unsafeEnumFrom [0,1,2,3, 5,6,7,8,9,10,11,12,13]
  fromCode = enumFrom [0,1,2,3, 5,6,7,8,9,10,11,12,13]

data CurlSSLSet
  = CURLSSLSET_OK -- = 0
  | CURLSSLSET_UNKNOWN_BACKEND
  | CURLSSLSET_TOO_LATE
  | CURLSSLSET_NO_BACKENDS

Show CurlSSLSet where
  show = showEnum

Eq CurlSSLSet where
  (==) = eqEnum

Ord CurlSSLSet where
  compare = compareEnum

ToCode CurlSSLSet where
  toCode = enumTo [0..3]

FromCode CurlSSLSet where
  unsafeFromCode = unsafeEnumFrom [0..3]
  fromCode = enumFrom [0..3]

{-
typedef struct {
  curl_sslbackend id;
  const char *name;
} curl_ssl_backend;
-}