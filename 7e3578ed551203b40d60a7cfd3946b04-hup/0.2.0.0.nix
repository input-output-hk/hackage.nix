{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      enablewebtests = false;
      patchhelpmessage = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hup";
          version = "0.2.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "phlummox 2016, others where indicated";
        maintainer = "phlummox2@gmail.com";
        author = "phlummox";
        homepage = "https://github.com/phlummox/hup";
        url = "";
        synopsis = "Upload packages or documentation to a hackage server";
        description = "Upload packages or documentation to a hackage server\n\nSee README for details.";
        buildType = "Simple";
      };
      components = {
        hup = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.split
            hsPkgs.tar
            hsPkgs.zlib
          ];
        };
        exes = {
          hup = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.shelly
              hsPkgs.tagsoup
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.hup
            ] ++ [ hsPkgs.cmdargs ];
          };
        };
        tests = {
          hup-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.hspec-wai
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.hup
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.simple
              hsPkgs.temporary
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-extra
            ] ++ pkgs.lib.optionals _flags.enablewebtests [
              hsPkgs.network
              hsPkgs.vector
              hsPkgs.warp
            ];
          };
          hup-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.hup
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }