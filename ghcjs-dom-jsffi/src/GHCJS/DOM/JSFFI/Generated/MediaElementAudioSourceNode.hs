{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaElementAudioSourceNode
       (js_getMediaElement, getMediaElement, getMediaElementUnsafe,
        getMediaElementUnchecked, MediaElementAudioSourceNode(..),
        gTypeMediaElementAudioSourceNode)
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
 
foreign import javascript unsafe "$1[\"mediaElement\"]"
        js_getMediaElement ::
        MediaElementAudioSourceNode -> IO (Nullable HTMLMediaElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElement ::
                (MonadIO m) =>
                  MediaElementAudioSourceNode -> m (Maybe HTMLMediaElement)
getMediaElement self
  = liftIO (nullableToMaybe <$> (js_getMediaElement (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElementUnsafe ::
                      (MonadIO m, HasCallStack) =>
                        MediaElementAudioSourceNode -> m HTMLMediaElement
getMediaElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getMediaElement (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaElementAudioSourceNode.mediaElement Mozilla MediaElementAudioSourceNode.mediaElement documentation> 
getMediaElementUnchecked ::
                         (MonadIO m) => MediaElementAudioSourceNode -> m HTMLMediaElement
getMediaElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getMediaElement (self)))