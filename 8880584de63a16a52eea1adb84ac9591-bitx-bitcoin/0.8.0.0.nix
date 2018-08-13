{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bitx-bitcoin";
        version = "0.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tebello Thejane <zyxoas+hackage@gmail.com>";
      author = "Tebello Thejane";
      homepage = "https://github.com/tebello-thejane/bitx-haskell";
      url = "";
      synopsis = "A Haskell library for working with the BitX bitcoin exchange.";
      description = "Haskell bindings to the BitX REST API, as described here: <https://bitx.co/api>.\n\nNote that since this library interfaces directly with a financial API, great care\nmust be taken in its use. In particular, the author cannot be held accountable for any\nfinancial losses as a result of programming error, whether that error is in your code,\nthe code of the author of this library, or BitX's code. This is just common sense.\n\nIf you need to make sure that nothing funny happens in the code, apart from reading\nthe source yourself, you should also perform a few test transactions with very small\ndenominations, as I will strive to do every time before releasing a new version.\n\nFor a very small usage example, see \"Network.Bitcoin.BitX.Public\".";
      buildType = "Simple";
    };
    components = {
      "bitx-bitcoin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
          (hsPkgs.scientific)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.http-types)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bitx-bitcoin)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.microlens)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.safe)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.microlens)
            (hsPkgs.bitx-bitcoin)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.text)
          ];
        };
      };
    };
  }