{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "test-karya";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "https://github.com/elaforge/test-karya";
      url = "";
      synopsis = "Testing framework.";
      description = "This is Karya's test framework, extracted to be usable standalone.";
      buildType = "Simple";
    };
    components = {
      "test-karya" = {
        depends  = [
          (hsPkgs.Diff)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc-prim)
          (hsPkgs.pcre-heavy)
          (hsPkgs.pcre-light)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.async)
          (hsPkgs.process)
          (hsPkgs.pretty)
          (hsPkgs.haskell-src)
        ];
      };
      exes = {
        "test-karya-generate" = {
          depends  = [
            (hsPkgs.test-karya)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.pcre-heavy)
            (hsPkgs.pcre-light)
          ];
        };
      };
    };
  }