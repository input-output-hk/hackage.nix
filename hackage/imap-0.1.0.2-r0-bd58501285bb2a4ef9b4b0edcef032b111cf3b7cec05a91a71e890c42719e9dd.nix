{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "imap";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michal@monad.cat";
      author = "Michal Kawalec";
      homepage = "";
      url = "";
      synopsis = "An efficient IMAP client library, with SSL and streaming";
      description = "This is an IMAP library for Haskell that aims to be efficient, easy to use, transparent when it comes to underlying libraries and support results streaming. To this end it employs `ListT`, so you can use it with any concurrency management library of your choosing.\n\nIt tries to implement <https://tools.ietf.org/html/rfc3501 RFC-3501> as faithfully as possible, diverging from it where we noticed that servers have different ideas. If you want to understand this library, it's highly recommended to skim through that RFC first.\n\n/Usage/\n\nFor a description of types used in this tutorial or an in-depth description of functions presented, please check the documentation or the source code.\n\nAll of the commands will output their results in `ListT` and `MonadIO`. Results consist of a list of `UntaggedResult`s followed by a single `TaggedResult` that describes the command state (if it succeeded or failed).\n\nWe provide a helper function that simplifies the output types for the cases when you don't care about the streaming and just want a list of `UntaggedResult`s or an error message. Depending on your needs you will probably use it for all the commands that are not `FETCH`.\n\nAlso, remember that you probably have to keep the connection alive so that the server doesn't disconnect you. Send a `noop` from time to time to achieve that.\n\n/Simple, no streaming/\n\nYou need a connection object first, so that you can execute commands on it. It's produced by `connectServer`, which accepts parameters from <https://hackage.haskell.org/package/connection-0.2.5/docs/Network-Connection.html Network.Connection>. Say you want to connect to gmail:\n\n> import Network.Connection\n> import Network.IMAP\n\n> let tls = TLSSettingsSimple False False False\n> let params = ConnectionParams \"imap.gmail.com\" 993 (Just tls) Nothing\n> conn <- connectServer params\n\nFrom now on you can run commands on this connection. We will use the `simpleFormat` helper function to convert from `ListT` to `IO`. Let's log in:\n\n>   simpleFormat \$ login conn \"mylogin\" \"mypass\"\n>    Right [Capabilities [CIMAP4,CUnselect,CIdle,CNamespace,CQuota,CId,CExperimental \"XLIST\",CChildren,CExperimental \"X-GM-EXT-1\",CUIDPlus,CCompress \"DEFLATE\",CEnable,CMove,CCondstore,CEsearch,CUtf8 \"ACCEPT\",CListExtended,CListStatus,CAppendLimit 35882577]]\n\nYou can see that the server replied with a `CAPABILITIES` reply and the login was successful. Next, let's select an inbox:\n\n>   simpleFormat \$ select conn \"inbox2\"\n>    Left \"[NONEXISTENT] Unknown Mailbox: inbox2 (Failure)\"\n\nOh, let's fix that\n\n>   simpleFormat \$ select conn \"inbox\"\n>    Right [Flags [FAnswered,FFlagged,FDraft,FDeleted,FSeen,FOther \"\$NotPhishing\",FOther \"\$Phishing\",FOther \"NonJunk\"],PermanentFlags [FAnswered,FFlagged,FDraft,FDeleted,FSeen,FOther \"\$NotPhishing\",FOther \"\$Phishing\",FOther \"NonJunk\",FAny],UIDValidity 1,Exists 65,Recent 0,UIDNext 1050,HighestModSeq 251971]\n\nAgain you can use the metadata if you wish to. Let's see what messages we have (<https://tools.ietf.org/html/rfc3501#section-6.4.4 consult the RFC> if you're unsure about the parameter to `uidSearch`):\n\n>   simpleFormat \$ uidSearch conn \"ALL\"\n>    Right [Search [105,219,411,424,425,748,763,770,774,819,824,825,..]]\n\nFetching a message is straigtforward as well:\n\n>   simpleFormat \$ uidFetch conn \"219\"\n>   Right [Fetch [MessageId 2,UID 219,Body \"Delivered-To: michal@monad.cat\\r\\nReceived: by...\n\nIf you need more control on the parameters of fetch, there is a more general function available:\n\n>   simpleFormat \$ uidFetchG conn \"219 ALL\"\n\n\nDo you want multiple messages in one reply? That's easy with [UID ranges](https://tools.ietf.org/html/rfc3501#section-6.4.8)!\n\n>   simpleFormat \$ uidFetchG conn \"219:9000 RFC822.SIZE\"\n>   Right [Fetch [MessageId 2,UID 219,Size 4880],Fetch [MessageId 3,UID 411,Size 7392],...]\n\nThat's where streaming comes in handy - if these were message bodies you would probably like to do something with them before all are downloaded.\n\n/Replies we didn't expect/\n\nIMAP protocol allows for messages pushed to the client at any time, even when they're not requested. This is used to notify the client that a new message had arrived, or as status of a message had changed as it was read by another client. These server messages wait for you in a bounded message queue and you can read them like:\n\n>    import qualified Data.STM.RollingQueue as RQ\n>    msgs <- atomically . RQ.read . untaggedQueue \$ conn\n\nWhere `conn` is the connection from previous step.\n\n/Streaming/\n\nThere's an excellent article <http://www.haskellforall.com/2014/11/how-to-build-library-agnostic-streaming.html an excellent article> by Gabriel Gonzalez you should read :)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.connection)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.word8)
          (hsPkgs.rolling-queue)
          (hsPkgs.stm)
          (hsPkgs.either)
          (hsPkgs.hslogger)
          (hsPkgs.transformers)
          (hsPkgs.list-t)
          (hsPkgs.monadIO)
          (hsPkgs.derive)
          (hsPkgs.data-default)
          (hsPkgs.stm-delay)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "imap-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.bytestring)
            (hsPkgs.random)
            (hsPkgs.word8)
            (hsPkgs.rolling-queue)
            (hsPkgs.stm)
            (hsPkgs.either)
            (hsPkgs.hslogger)
            (hsPkgs.transformers)
            (hsPkgs.list-t)
            (hsPkgs.monadIO)
            (hsPkgs.derive)
            (hsPkgs.data-default)
            (hsPkgs.stm-delay)
            (hsPkgs.exceptions)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }