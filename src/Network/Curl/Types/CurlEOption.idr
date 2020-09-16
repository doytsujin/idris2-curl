module Network.Curl.Types.CurlEOption

import Network.Curl.Types.Code
import Network.Curl.Types.OptType

import Data.Buffer

import Util -- difference

import Derive.Enum
%language ElabReflection

public export
data CurlEOption : OptType -> Type where
  CURLOPT_WRITEDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_URL : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PORT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_USERPWD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXYUSERPWD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_RANGE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_READDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_ERRORBUFFER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_WRITEFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_READFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_TIMEOUT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_INFILESIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_POSTFIELDS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_REFERER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FTPPORT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_USERAGENT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_LOW_SPEED_LIMIT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_LOW_SPEED_TIME : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RESUME_FROM : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_COOKIE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HTTPHEADER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HTTPPOST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLCERT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_KEYPASSWD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_CRLF : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_QUOTE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HEADERDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_COOKIEFILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLVERSION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TIMECONDITION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TIMEVALUE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CUSTOMREQUEST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_STDERR : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_POSTQUOTE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_OBSOLETE40 : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_VERBOSE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HEADER : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NOPROGRESS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NOBODY : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FAILONERROR : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_UPLOAD : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_POST : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DIRLISTONLY : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_APPEND : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NETRC : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FOLLOWLOCATION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TRANSFERTEXT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PUT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROGRESSFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_XFERINFODATA : CurlEOption CURLOPTTYPE_OBJECTPOINT -- aka CURLOPT_PROGRESSDATA
  CURLOPT_AUTOREFERER : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXYPORT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_POSTFIELDSIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HTTPPROXYTUNNEL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_INTERFACE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_KRBLEVEL : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSL_VERIFYPEER : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CAINFO : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAXREDIRS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FILETIME : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TELNETOPTIONS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAXCONNECTS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_OBSOLETE72 : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FRESH_CONNECT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FORBID_REUSE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RANDOM_FILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_EGDSOCKET : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_CONNECTTIMEOUT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HEADERFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_HTTPGET : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSL_VERIFYHOST : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_COOKIEJAR : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSL_CIPHER_LIST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HTTP_VERSION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FTP_USE_EPSV : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSLCERTTYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLKEY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLKEYTYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLENGINE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSLENGINE_DEFAULT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DNS_USE_GLOBAL_CACHE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DNS_CACHE_TIMEOUT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PREQUOTE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_DEBUGFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_DEBUGDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_COOKIESESSION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CAPATH : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_BUFFERSIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NOSIGNAL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SHARE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXYTYPE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_ACCEPT_ENCODING : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PRIVATE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HTTP200ALIASES : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_UNRESTRICTED_AUTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FTP_USE_EPRT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HTTPAUTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSL_CTX_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_SSL_CTX_DATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FTP_CREATE_MISSING_DIRS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXYAUTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SERVER_RESPONSE_TIMEOUT : CurlEOption CURLOPTTYPE_LONG -- aka CURLOPT_FTP_RESPONSE_TIMEOUT
  CURLOPT_IPRESOLVE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_MAXFILESIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_INFILESIZE_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_RESUME_FROM_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_MAXFILESIZE_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_NETRC_FILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_USE_SSL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_POSTFIELDSIZE_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_TCP_NODELAY : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FTPSSLAUTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_IOCTLFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_IOCTLDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FTP_ACCOUNT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_COOKIELIST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_IGNORE_CONTENT_LENGTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FTP_SKIP_PASV_IP : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_FTP_FILEMETHOD : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_LOCALPORT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_LOCALPORTRANGE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CONNECT_ONLY : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CONV_FROM_NETWORK_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_CONV_TO_NETWORK_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_CONV_FROM_UTF8_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_MAX_SEND_SPEED_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_MAX_RECV_SPEED_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_FTP_ALTERNATIVE_TO_USER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SOCKOPTFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_SOCKOPTDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSL_SESSIONID_CACHE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSH_AUTH_TYPES : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSH_PUBLIC_KEYFILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSH_PRIVATE_KEYFILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FTP_SSL_CCC : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TIMEOUT_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CONNECTTIMEOUT_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HTTP_TRANSFER_DECODING : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_HTTP_CONTENT_DECODING : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NEW_FILE_PERMS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_NEW_DIRECTORY_PERMS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_POSTREDIR : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSH_HOST_PUBLIC_KEY_MD5 : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_OPENSOCKETFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_OPENSOCKETDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_COPYPOSTFIELDS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_TRANSFER_MODE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SEEKFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_SEEKDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_CRLFILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_ISSUERCERT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_ADDRESS_SCOPE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CERTINFO : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_USERNAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PASSWORD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXYUSERNAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXYPASSWORD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_NOPROXY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TFTP_BLKSIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SOCKS5_GSSAPI_SERVICE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SOCKS5_GSSAPI_NEC : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROTOCOLS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_REDIR_PROTOCOLS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSH_KNOWNHOSTS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSH_KEYFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_SSH_KEYDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAIL_FROM : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAIL_RCPT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FTP_USE_PRET : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RTSP_REQUEST : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RTSP_SESSION_ID : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_RTSP_STREAM_URI : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_RTSP_TRANSPORT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_RTSP_CLIENT_CSEQ : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RTSP_SERVER_CSEQ : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_INTERLEAVEDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_INTERLEAVEFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_WILDCARDMATCH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CHUNK_BGN_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_CHUNK_END_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_FNMATCH_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_CHUNK_DATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_FNMATCH_DATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_RESOLVE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TLSAUTH_USERNAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TLSAUTH_PASSWORD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TLSAUTH_TYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TRANSFER_ENCODING : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CLOSESOCKETFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_CLOSESOCKETDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_GSSAPI_DELEGATION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DNS_SERVERS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_ACCEPTTIMEOUT_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TCP_KEEPALIVE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TCP_KEEPIDLE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TCP_KEEPINTVL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSL_OPTIONS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_MAIL_AUTH : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SASL_IR : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_XFERINFOFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_XOAUTH2_BEARER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_DNS_INTERFACE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_DNS_LOCAL_IP4 : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_DNS_LOCAL_IP6 : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_LOGIN_OPTIONS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSL_ENABLE_NPN : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSL_ENABLE_ALPN : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_EXPECT_100_TIMEOUT_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXYHEADER : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HEADEROPT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PINNEDPUBLICKEY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_UNIX_SOCKET_PATH : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SSL_VERIFYSTATUS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSL_FALSESTART : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PATH_AS_IS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY_SERVICE_NAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SERVICE_NAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PIPEWAIT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DEFAULT_PROTOCOL : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_STREAM_WEIGHT : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_STREAM_DEPENDS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_STREAM_DEPENDS_E : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TFTP_NO_OPTIONS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CONNECT_TO : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TCP_FASTOPEN : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_KEEP_SENDING_ON_ERROR : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY_CAINFO : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_CAPATH : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSL_VERIFYPEER : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY_SSL_VERIFYHOST : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY_SSLVERSION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PROXY_TLSAUTH_USERNAME : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_TLSAUTH_PASSWORD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_TLSAUTH_TYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSLCERT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSLCERTTYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSLKEY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSLKEYTYPE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_KEYPASSWD : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSL_CIPHER_LIST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_CRLFILE : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_SSL_OPTIONS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_PRE_PROXY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_PINNEDPUBLICKEY : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_ABSTRACT_UNIX_SOCKET : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SUPPRESS_CONNECT_HEADERS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_REQUEST_TARGET : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_SOCKS5_AUTH : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSH_COMPRESSION : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_MIMEPOST : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TIMEVALUE_LARGE : CurlEOption CURLOPTTYPE_OFF_T
  CURLOPT_HAPPY_EYEBALLS_TIMEOUT_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_RESOLVER_START_FUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_RESOLVER_START_DATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HAPROXYPROTOCOL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DNS_SHUFFLE_ADDRESSES : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_TLS13_CIPHERS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_TLS13_CIPHERS : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_DISALLOW_USERNAME_IN_URL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_DOH_URL : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_UPLOAD_BUFFERSIZE : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_UPKEEP_INTERVAL_MS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_CURLU : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_TRAILERFUNCTION : CurlEOption CURLOPTTYPE_FUNCTIONPOINT
  CURLOPT_TRAILERDATA : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_HTTP09_ALLOWED : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_ALTSVC_CTRL : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_ALTSVC : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAXAGE_CONN : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SASL_AUTHZID : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_MAIL_RCPT_ALLLOWFAILS : CurlEOption CURLOPTTYPE_LONG
  CURLOPT_SSLCERT_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_SSLKEY_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_PROXY_SSLCERT_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_PROXY_SSLKEY_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_ISSUERCERT_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_PROXY_ISSUERCERT : CurlEOption CURLOPTTYPE_OBJECTPOINT
  CURLOPT_PROXY_ISSUERCERT_BLOB : CurlEOption CURLOPTTYPE_BLOB
  CURLOPT_LASTENTRY : CurlEOption CURLOPTTYPE_LONG -- Not used.

curlOptEnumList : List Int
curlOptEnumList = difference [1..298]
  [8,30,35,38,49,55,66,67,73,122,123,124,125,126,127,128,132,133]
-- ^ remove enums omitted from curl.h

[derivedToCode] ToCode (CurlEOption ty) where
  toCode = enumTo curlOptEnumList

-- Automate toCode plussing with the power of named instances
public export
{ty : _} -> ToCode (CurlEOption ty) where
  toCode opt = toCode @{derivedToCode} opt + toCode ty

-- from is a little more complicated to automate since we'll need to case ty
-- somehow during elab. tough but we need that if we query curl for current
-- options. We can always do it manually though, but what a mess if so.

-- [derivedFromCode] {ty :_} -> FromCode (CurlEOption ty) where
  -- fromCode {ty} = ?aSDFfd_1

public export
Show (CurlEOption ty) where
  show = showEnum

||| Casing ty first in this way lets us write functions that depend on this in a
||| much more pleasing way, since the class of parameters narrows down the
||| potential constructors very quickly we can case on `ty` before `CurlMOption`
||| to vastly reduce the cases to consider. We call out to optType despite
||| already casing ty to keep the types consistent between easy and multi.
public export
paramType : {ty : _} -> CurlEOption ty -> Type
paramType {ty = ty@CURLOPTTYPE_LONG} opt = optType ty
paramType {ty = ty@CURLOPTTYPE_OBJECTPOINT} opt = optType ty
paramType {ty = ty@CURLOPTTYPE_OFF_T} opt = optType ty
paramType {ty = ty@CURLOPTTYPE_BLOB} opt = optType ty
paramType CURLOPT_LASTENTRY = Void -- not used by curl
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_WRITEFUNCTION
  = ?dsffsdfsd_4
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_READFUNCTION
  = ?dsffsdfsd_5
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_PROGRESSFUNCTION
  = ?dsffsdfsd_6
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_HEADERFUNCTION
  = ?dsffsdfsd_7
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_DEBUGFUNCTION
  = ?dsffsdfsd_8
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_SSL_CTX_FUNCTION
  = ?dsffsdfsd_9
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_IOCTLFUNCTION
  = ?dsffsdfsd_10
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CONV_FROM_NETWORK_FUNCTION
  = ?dsffsdfsd_11
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CONV_TO_NETWORK_FUNCTION
  = ?dsffsdfsd_12
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CONV_FROM_UTF8_FUNCTION
  = ?dsffsdfsd_13
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_SOCKOPTFUNCTION
  = ?dsffsdfsd_14
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_OPENSOCKETFUNCTION
  = ?dsffsdfsd_15
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_SEEKFUNCTION
  = ?dsffsdfsd_16
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_SSH_KEYFUNCTION
  = ?dsffsdfsd_17
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_INTERLEAVEFUNCTION
  = ?dsffsdfsd_18
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CHUNK_BGN_FUNCTION
  = ?dsffsdfsd_19
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CHUNK_END_FUNCTION
  = ?dsffsdfsd_20
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_FNMATCH_FUNCTION
  = ?dsffsdfsd_21
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_CLOSESOCKETFUNCTION
  = ?dsffsdfsd_22
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_XFERINFOFUNCTION
  = ?dsffsdfsd_23
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_RESOLVER_START_FUNCTION
  = ?dsffsdfsd_24
paramType {ty = CURLOPTTYPE_FUNCTIONPOINT} CURLOPT_TRAILERFUNCTION
  = ?dsffsdfsd_25


-- paramType CURLOPT_WRITEFUNCTION
  -- = Buffer -> (size : Int) -> (nmemb : Int) -> AnyPtr -> PrimIO Int -- returns amount dealth with
