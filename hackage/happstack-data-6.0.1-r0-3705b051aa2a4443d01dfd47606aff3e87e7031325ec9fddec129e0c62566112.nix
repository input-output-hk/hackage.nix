{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      tests = false;
      old-haxml = false;
      new-haxml = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "happstack-data";
        version = "6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Happstack data manipulation libraries";
      description = "This package provides libraries for:\n\n* Deriving instances for your datatypes.\n\n* Producing default values of Haskell datatypes.\n\n* Normalizing values of Haskell datatypes.\n\n* Marshalling Haskell values to and from XML.\n\n* Marshalling Haskell values to and from HTML forms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (((([
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.syb-with-class-instances-text)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ])) ++ [
          (hsPkgs.syb-with-class)
        ]) ++ pkgs.lib.optional (flags.old-haxml) (hsPkgs.HaXml)) ++ pkgs.lib.optional (flags.new-haxml) (hsPkgs.HaXml)) ++ pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
      };
      exes = {
        "happstack-data-tests" = {
          depends  = pkgs.lib.optional (flags.tests) (hsPkgs.HUnit);
        };
      };
    };
  }