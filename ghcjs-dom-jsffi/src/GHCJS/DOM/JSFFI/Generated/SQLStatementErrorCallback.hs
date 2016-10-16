{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SQLStatementErrorCallback
       (newSQLStatementErrorCallback, newSQLStatementErrorCallbackSync,
        newSQLStatementErrorCallbackAsync, SQLStatementErrorCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallback ::
                             (MonadIO m) =>
                               (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                 m SQLStatementErrorCallback
newSQLStatementErrorCallback callback
  = liftIO
      (SQLStatementErrorCallback <$>
         syncCallback2 ThrowWouldBlock
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackSync ::
                                 (MonadIO m) =>
                                   (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                     m SQLStatementErrorCallback
newSQLStatementErrorCallbackSync callback
  = liftIO
      (SQLStatementErrorCallback <$>
         syncCallback2 ContinueAsync
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLStatementErrorCallback Mozilla SQLStatementErrorCallback documentation> 
newSQLStatementErrorCallbackAsync ::
                                  (MonadIO m) =>
                                    (Maybe SQLTransaction -> Maybe SQLError -> IO ()) ->
                                      m SQLStatementErrorCallback
newSQLStatementErrorCallbackAsync callback
  = liftIO
      (SQLStatementErrorCallback <$>
         asyncCallback2
           (\ transaction error ->
              fromJSValUnchecked error >>=
                \ error' ->
                  fromJSValUnchecked transaction >>=
                    \ transaction' -> callback transaction'
                    error'))