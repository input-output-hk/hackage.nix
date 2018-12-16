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
      specVersion = "1.6";
      identifier = {
        name = "safecopy";
        version = "0.6.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Felipe Lessa";
      homepage = "http://acid-state.seize.it/safecopy";
      url = "";
      synopsis = "Binary serialization with version control.";
      description = "An extension to Data.Serialize with built-in version control.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }