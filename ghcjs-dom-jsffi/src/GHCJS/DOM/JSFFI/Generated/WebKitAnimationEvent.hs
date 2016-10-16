{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitAnimationEvent
       (js_getAnimationName, getAnimationName, js_getElapsedTime,
        getElapsedTime, WebKitAnimationEvent(..),
        gTypeWebKitAnimationEvent)
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
 
foreign import javascript unsafe "$1[\"animationName\"]"
        js_getAnimationName :: WebKitAnimationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.animationName Mozilla WebKitAnimationEvent.animationName documentation> 
getAnimationName ::
                 (MonadIO m, FromJSString result) =>
                   WebKitAnimationEvent -> m result
getAnimationName self
  = liftIO (fromJSString <$> (js_getAnimationName (self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: WebKitAnimationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitAnimationEvent.elapsedTime Mozilla WebKitAnimationEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => WebKitAnimationEvent -> m Double
getElapsedTime self = liftIO (js_getElapsedTime (self))