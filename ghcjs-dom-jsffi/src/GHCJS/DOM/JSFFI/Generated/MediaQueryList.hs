{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaQueryList
       (js_addListener, addListener, js_removeListener, removeListener,
        js_getMedia, getMedia, js_getMatches, getMatches,
        MediaQueryList(..), gTypeMediaQueryList)
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
 
foreign import javascript unsafe "$1[\"addListener\"]($2)"
        js_addListener ::
        MediaQueryList -> Nullable MediaQueryListListener -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.addListener Mozilla MediaQueryList.addListener documentation> 
addListener ::
            (MonadIO m) =>
              MediaQueryList -> Maybe MediaQueryListListener -> m ()
addListener self listener
  = liftIO (js_addListener (self) (maybeToNullable listener))
 
foreign import javascript unsafe "$1[\"removeListener\"]($2)"
        js_removeListener ::
        MediaQueryList -> Nullable MediaQueryListListener -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.removeListener Mozilla MediaQueryList.removeListener documentation> 
removeListener ::
               (MonadIO m) =>
                 MediaQueryList -> Maybe MediaQueryListListener -> m ()
removeListener self listener
  = liftIO (js_removeListener (self) (maybeToNullable listener))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        MediaQueryList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.media Mozilla MediaQueryList.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => MediaQueryList -> m result
getMedia self = liftIO (fromJSString <$> (js_getMedia (self)))
 
foreign import javascript unsafe "($1[\"matches\"] ? 1 : 0)"
        js_getMatches :: MediaQueryList -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.matches Mozilla MediaQueryList.matches documentation> 
getMatches :: (MonadIO m) => MediaQueryList -> m Bool
getMatches self = liftIO (js_getMatches (self))