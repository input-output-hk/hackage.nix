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
        version = "0.4.4.6";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Automatically derive (jquery) javascript functions to query servant webservices";
      description = "Automatically derive jquery-based javascript functions to query servant webservices.\n\nYou can find an example <https://github.com/haskell-servant/servant/blob/master/servant-jquery/examples/counter.hs here>\nwhich serves the generated javascript to a webpage that allows you to trigger\nwebservice calls.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-jquery/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "servant-jquery" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.charset)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.text)
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
            (hsPkgs.lens)
            (hsPkgs.servant-jquery)
            (hsPkgs.servant)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.language-ecmascript)
          ];
        };
      };
    };
  }