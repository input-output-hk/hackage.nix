{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = true;
      lens-aeson = true;
      build-samples = false;
      use-debug-output = false;
      run-integrated-test = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "twitter-conduit";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takahiro HIMURA <taka@himura.jp>";
      author = "HATTORI Hiroki, Hideyuki Tanaka, Takahiro HIMURA";
      homepage = "https://github.com/himura/twitter-conduit";
      url = "";
      synopsis = "Twitter API package with conduit interface and Streaming API support.";
      description = "This package provides bindings to Twitter's APIs (see <https://dev.twitter.com/>).\n\nThis package uses the http-conduit package for accessing the Twitter API (see <http://hackage.haskell.org/package/http-conduit>).\nThis package also depends on the twitter-types package (see <http://hackage.haskell.org/package/twitter-types>).\n\nYou can find basic examples in the <https://github.com/himura/twitter-conduit/tree/master/sample> directory.\n\nThis package is under development. If you find something that has not been implemented yet, please send a pull request or open an issue on GitHub.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.authenticate-oauth)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.monad-logger)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.twitter-types)
        ] ++ (if flags.lens-aeson
          then [
            (hsPkgs.lens-aeson)
            (hsPkgs.lens)
          ]
          else [ (hsPkgs.lens) ]);
      };
      exes = {
        "simple" = {
          depends = pkgs.lib.optionals (!(!flags.build-samples)) [
            (hsPkgs.base)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.data-default)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.twitter-types)
            (hsPkgs.twitter-conduit)
            (hsPkgs.twitter-types)
          ];
        };
        "userstream" = {
          depends = pkgs.lib.optionals (!(!flags.build-samples)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.case-insensitive)
            (hsPkgs.lens)
            (hsPkgs.aeson)
            (hsPkgs.data-default)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.twitter-conduit)
            (hsPkgs.twitter-types)
          ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) ]
            else [ (hsPkgs.network) ]);
        };
        "oauth_callback" = {
          depends = pkgs.lib.optionals (!(!flags.build-samples)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.twitter-conduit)
            (hsPkgs.scotty)
          ];
        };
        "oauth_pin" = {
          depends = pkgs.lib.optionals (!(!flags.build-samples)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.twitter-conduit)
          ];
        };
      };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.doctest)
          ];
        };
        "spec_main" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.lens)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.data-default)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.http-client)
            (hsPkgs.monad-logger)
            (hsPkgs.authenticate-oauth)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.twitter-types)
          ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) ]
            else [
              (hsPkgs.network)
            ])) ++ pkgs.lib.optional (flags.lens-aeson) (hsPkgs.lens-aeson);
        };
      };
    };
  }