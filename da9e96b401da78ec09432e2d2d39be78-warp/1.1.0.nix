{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-bytestring = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "warp";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.";
      buildType = "Simple";
    };
    components = {
      "warp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.lifted-base)
          (hsPkgs.blaze-builder)
          (hsPkgs.simple-sendfile)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.unix-compat)
          (hsPkgs.ghc-prim)
        ] ++ (if _flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [ (hsPkgs.network) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.warp)
            (hsPkgs.conduit)
            (hsPkgs.network)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }