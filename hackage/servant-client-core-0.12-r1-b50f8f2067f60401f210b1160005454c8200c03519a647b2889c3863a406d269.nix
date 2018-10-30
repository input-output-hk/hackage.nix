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
        name = "servant-client-core";
        version = "0.12";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2017 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Core functionality and class for client function generation for servant APIs";
      description = "This library provides backend-agnostic generation of client functions. For\nmore information, see the README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.generics-sop)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.servant)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.deepseq)
            (hsPkgs.servant-client-core)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }