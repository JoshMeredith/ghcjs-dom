{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeySession
       (js_update, update, js_close, close, js_getError, getError,
        getErrorUnsafe, getErrorUnchecked, js_getKeySystem, getKeySystem,
        js_getSessionId, getSessionId, webKitKeyAdded, webKitKeyError,
        webKitKeyMessage, MediaKeySession(..), gTypeMediaKeySession)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"update\"]($2)" js_update ::
        MediaKeySession -> Nullable Uint8Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.update Mozilla WebKitMediaKeySession.update documentation> 
update ::
       (MonadIO m, IsUint8Array key) =>
         MediaKeySession -> Maybe key -> m ()
update self key
  = liftIO
      (js_update (self) (maybeToNullable (fmap toUint8Array key)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        MediaKeySession -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.close Mozilla WebKitMediaKeySession.close documentation> 
close :: (MonadIO m) => MediaKeySession -> m ()
close self = liftIO (js_close (self))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        MediaKeySession -> IO (Nullable MediaKeyError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
getError ::
         (MonadIO m) => MediaKeySession -> m (Maybe MediaKeyError)
getError self = liftIO (nullableToMaybe <$> (js_getError (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
getErrorUnsafe ::
               (MonadIO m, HasCallStack) => MediaKeySession -> m MediaKeyError
getErrorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getError (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.error Mozilla WebKitMediaKeySession.error documentation> 
getErrorUnchecked ::
                  (MonadIO m) => MediaKeySession -> m MediaKeyError
getErrorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getError (self)))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.keySystem Mozilla WebKitMediaKeySession.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => MediaKeySession -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem (self)))
 
foreign import javascript unsafe "$1[\"sessionId\"]"
        js_getSessionId :: MediaKeySession -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.sessionId Mozilla WebKitMediaKeySession.sessionId documentation> 
getSessionId ::
             (MonadIO m, FromJSString result) => MediaKeySession -> m result
getSessionId self
  = liftIO (fromJSString <$> (js_getSessionId (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyadded Mozilla WebKitMediaKeySession.onwebkitkeyadded documentation> 
webKitKeyAdded :: EventName MediaKeySession Event
webKitKeyAdded = unsafeEventName (toJSString "webkitkeyadded")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeyerror Mozilla WebKitMediaKeySession.onwebkitkeyerror documentation> 
webKitKeyError :: EventName MediaKeySession Event
webKitKeyError = unsafeEventName (toJSString "webkitkeyerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeySession.onwebkitkeymessage Mozilla WebKitMediaKeySession.onwebkitkeymessage documentation> 
webKitKeyMessage :: EventName MediaKeySession Event
webKitKeyMessage = unsafeEventName (toJSString "webkitkeymessage")