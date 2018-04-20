{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "concurrent-split";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "";
        url = "";
        synopsis = "MVars and Channels with distinguished input and output side";
        description = "MVars and Channels with distinguished input and output side.\nWhen threads communicate via an MVar or a Chan\nthere are often clearly defined roles,\nwhich thread is the sender and which one is receiver.\nWe provide wrappers around the standard concurrency communication channels\nthat make the distinction clear and type safe.\n\nFor example, if a function has a parameter of type @TChan.In@\nthen it is sure that it will only write to that channel.\nAdditionally if the compiler warns about an unused @TChan.Out@\nthat was created by @TChan.new@\nthen you know that the receiver part of your communication is missing.\n\nThis package requires only Haskell 98.\n\nRelated packages:\n\n* @stm-split@: transactional communication in @STM@ monad\n\n* @chan-split@: follows the same idea as this package and @stm-split@\nbut requires multi-parameter type classes with functional dependencies.\n\n* @privileged-concurrency@:\n\n* @split-channel@:";
        buildType = "Simple";
      };
      components = {
        concurrent-split = {
          depends  = [ hsPkgs.base ];
        };
      };
    }