{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { es1 = true; es5 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bloodhound"; version = "0.14.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015, Chris Allen";
      maintainer = "cma@bitemyapp.com";
      author = "Chris Allen";
      homepage = "https://github.com/bitemyapp/bloodhound";
      url = "";
      synopsis = "ElasticSearch client library for Haskell";
      description = "ElasticSearch made awesome for Haskell hackers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.network-uri)
          (hsPkgs.semigroups)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.vector)
          (hsPkgs.scientific)
          (hsPkgs.exceptions)
          (hsPkgs.data-default-class)
          (hsPkgs.blaze-builder)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl-compat)
          (hsPkgs.hashable)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bloodhound)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.aeson)
            (hsPkgs.semigroups)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-properties)
            (hsPkgs.generics-sop)
            (hsPkgs.errors)
            (hsPkgs.exceptions)
            (hsPkgs.temporary)
            (hsPkgs.unix-compat)
            (hsPkgs.network-uri)
            ];
          };
        };
      };
    }