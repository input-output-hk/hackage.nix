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
        name = "json-sop";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries <edsko@well-typed.com>, Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "Generics JSON (de)serialization using generics-sop";
      description = "This library contains generic serialization and deserialization functions\nimplemented using the @<https://hackage.haskell.org/generics-sop generics-sop>@\npackage for use with @<http://hackage.haskell.org/aeson aeson>@.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.lens-sop)
          (hsPkgs.tagged)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }