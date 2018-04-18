{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "double-conversion";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "https://github.com/mailrank/double-conversion";
        url = "";
        synopsis = "Fast conversion between double precision floating point and text";
        description = "A library that performs fast conversion between double precision\nfloating point and text, implemented as bindings to the C++\ndouble-conversion library written by Florian Loitsch at Google.";
        buildType = "Simple";
      };
      components = {
        double-conversion = {
          depends  = ([
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.text
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.integer-gmp) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.integer;
          libs = [ pkgs."stdc++" ];
        };
      };
    }