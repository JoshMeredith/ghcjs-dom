{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimationElement
       (js_getStartTime, getStartTime, getStartTime_, js_getCurrentTime,
        getCurrentTime, getCurrentTime_, js_getSimpleDuration,
        getSimpleDuration, getSimpleDuration_, js_beginElement,
        beginElement, js_beginElementAt, beginElementAt, js_endElement,
        endElement, js_endElementAt, endElementAt, js_getTargetElement,
        getTargetElement, getTargetElementUnsafe,
        getTargetElementUnchecked, SVGAnimationElement(..),
        gTypeSVGAnimationElement, IsSVGAnimationElement,
        toSVGAnimationElement)
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
 
foreign import javascript unsafe "$1[\"getStartTime\"]()"
        js_getStartTime :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getStartTime self
  = liftIO (js_getStartTime (toSVGAnimationElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getStartTime Mozilla SVGAnimationElement.getStartTime documentation> 
getStartTime_ ::
              (MonadIO m, IsSVGAnimationElement self) => self -> m ()
getStartTime_ self
  = liftIO (void (js_getStartTime (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        js_getCurrentTime :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime ::
               (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getCurrentTime self
  = liftIO (js_getCurrentTime (toSVGAnimationElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getCurrentTime Mozilla SVGAnimationElement.getCurrentTime documentation> 
getCurrentTime_ ::
                (MonadIO m, IsSVGAnimationElement self) => self -> m ()
getCurrentTime_ self
  = liftIO (void (js_getCurrentTime (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"getSimpleDuration\"]()"
        js_getSimpleDuration :: SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration ::
                  (MonadIO m, IsSVGAnimationElement self) => self -> m Float
getSimpleDuration self
  = liftIO (js_getSimpleDuration (toSVGAnimationElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.getSimpleDuration Mozilla SVGAnimationElement.getSimpleDuration documentation> 
getSimpleDuration_ ::
                   (MonadIO m, IsSVGAnimationElement self) => self -> m ()
getSimpleDuration_ self
  = liftIO (void (js_getSimpleDuration (toSVGAnimationElement self)))
 
foreign import javascript unsafe "$1[\"beginElement\"]()"
        js_beginElement :: SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElement Mozilla SVGAnimationElement.beginElement documentation> 
beginElement ::
             (MonadIO m, IsSVGAnimationElement self) => self -> m ()
beginElement self
  = liftIO (js_beginElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElementAt\"]($2)"
        js_beginElementAt :: SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElementAt Mozilla SVGAnimationElement.beginElementAt documentation> 
beginElementAt ::
               (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
beginElementAt self offset
  = liftIO (js_beginElementAt (toSVGAnimationElement self) offset)
 
foreign import javascript unsafe "$1[\"endElement\"]()"
        js_endElement :: SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElement Mozilla SVGAnimationElement.endElement documentation> 
endElement ::
           (MonadIO m, IsSVGAnimationElement self) => self -> m ()
endElement self
  = liftIO (js_endElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"endElementAt\"]($2)"
        js_endElementAt :: SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElementAt Mozilla SVGAnimationElement.endElementAt documentation> 
endElementAt ::
             (MonadIO m, IsSVGAnimationElement self) => self -> Float -> m ()
endElementAt self offset
  = liftIO (js_endElementAt (toSVGAnimationElement self) offset)
 
foreign import javascript unsafe "$1[\"targetElement\"]"
        js_getTargetElement ::
        SVGAnimationElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElement ::
                 (MonadIO m, IsSVGAnimationElement self) =>
                   self -> m (Maybe SVGElement)
getTargetElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getTargetElement (toSVGAnimationElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElementUnsafe ::
                       (MonadIO m, IsSVGAnimationElement self, HasCallStack) =>
                         self -> m SVGElement
getTargetElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getTargetElement (toSVGAnimationElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
getTargetElementUnchecked ::
                          (MonadIO m, IsSVGAnimationElement self) => self -> m SVGElement
getTargetElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTargetElement (toSVGAnimationElement self)))