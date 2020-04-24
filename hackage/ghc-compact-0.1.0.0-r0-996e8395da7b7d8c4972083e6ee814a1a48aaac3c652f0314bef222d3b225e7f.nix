{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-compact"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "In memory storage of deeply evaluated data structure";
      description = "This package provides minimal functionality for working with\n\"compact regions\", which hold a fully evaluated Haskell object graph.\nThese regions maintain the invariant that no pointers live inside the struct\nthat point outside it, which ensures efficient garbage collection without\never reading the structure contents (effectively, it works as a manually\nmanaged \"oldest generation\" which is never freed until the whole is\nreleased).\n\nInternally, the struct is stored a single contiguous block of memory,\nwhich allows efficient serialization and deserialization of structs\nfor distributed computing.\n\nThis package provides a low-level API; see also the </package/compact compact package> which provides a user-facing API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }