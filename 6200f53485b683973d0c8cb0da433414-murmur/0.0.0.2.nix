{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "murmur";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author Tokiwo Ousaka";
        maintainer = "its.out.of.tune.this.my.music@gmail.com";
        author = "Tokiwo Ousaka";
        homepage = "http://github.com/tokiwoousaka/murmur#readme";
        url = "";
        synopsis = "Simple CUI Twitter Client.";
        description = "This package privides simple CUI Twitter client. and very easy API.";
        buildType = "Simple";
      };
      components = {
        murmur = {
          depends  = [
            hsPkgs.base
            hsPkgs.twitter-conduit
            hsPkgs.twitter-types-lens
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.authenticate-oauth
            hsPkgs.http-conduit
            hsPkgs.resourcet
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.transformers
            hsPkgs.data-default
            hsPkgs.lens
          ];
        };
        exes = {
          mur = {
            depends  = [
              hsPkgs.base
              hsPkgs.murmur
              hsPkgs.twitter-conduit
              hsPkgs.optparse-declarative
              hsPkgs.transformers
              hsPkgs.directory
            ];
          };
        };
        tests = {
          murmur-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.murmur
            ];
          };
        };
      };
    }