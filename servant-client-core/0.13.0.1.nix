{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-client-core";
          version = "0.13.0.1";
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
        servant-client-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.servant
            hsPkgs.base-compat
            hsPkgs.base64-bytestring
            hsPkgs.exceptions
            hsPkgs.generics-sop
            hsPkgs.http-api-data
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.safe
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.servant-client-core
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }