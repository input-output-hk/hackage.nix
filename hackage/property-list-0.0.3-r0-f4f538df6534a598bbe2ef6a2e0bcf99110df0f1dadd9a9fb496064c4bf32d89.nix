{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haxml_1_13 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "property-list"; version = "0.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser, data type and formatter for Apple's XML property list 1.0 format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-class)
          (hsPkgs.containers)
          (hsPkgs.comonad-transformers)
          (hsPkgs.dataenc)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.pointed)
          (hsPkgs.pretty)
          (hsPkgs.recursion-schemes)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.th-fold)
          (hsPkgs.void)
          ] ++ [ (hsPkgs.HaXml) ];
        };
      };
    }