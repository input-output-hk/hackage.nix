{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-jquery";
        version = "0.2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Automatically derive (jquery) javascript functions to query servant webservices";
      description = "Automatically derive jquery-based javascript functions to query servant webservices.\n\nExample <https://github.com/haskell-servant/servant-jquery/blob/master/examples/counter.hs here> that serves the generated javascript to a webpage that lets you\ntrigger webservice calls.";
      buildType = "Simple";
    };
    components = {
      "servant-jquery" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.lens)
        ];
      };
      exes = {
        "counter" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-jquery)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-jquery)
            (hsPkgs.servant)
            (hsPkgs.hspec)
            (hsPkgs.language-ecmascript)
          ];
        };
      };
    };
  }