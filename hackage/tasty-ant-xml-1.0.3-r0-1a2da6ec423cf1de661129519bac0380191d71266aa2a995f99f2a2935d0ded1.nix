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
        name = "tasty-ant-xml";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/tasty-ant-xml";
      url = "";
      synopsis = "Render tasty output to XML for Jenkins";
      description = "A tasty ingredient to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.generic-deriving)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.xml)
        ];
      };
    };
  }