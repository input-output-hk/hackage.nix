{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aws";
          version = "0.9.2";
        };
        license = "BSD-3-Clause";
        copyright = "See contributors list in README and LICENSE file";
        maintainer = "aristidb@gmail.com";
        author = "Aristid Breitkreuz, contributors see README";
        homepage = "http://github.com/aristidb/aws";
        url = "";
        synopsis = "Amazon Web Services (AWS) for Haskell";
        description = "Bindings for Amazon Web Services (AWS), with the aim of supporting all AWS services. To see a high level overview of the library, see the README at <https://github.com/aristidb/aws/blob/master/README.org>.";
        buildType = "Simple";
      };
      components = {
        aws = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.utf8-string
            hsPkgs.vector
            hsPkgs.xml-conduit
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.ghc-prim;
        };
        exes = {
          GetObject = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.http-conduit
              hsPkgs.conduit
              hsPkgs.conduit-extra
            ];
          };
          SimpleDb = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.text
            ];
          };
          Sqs = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.aws
              hsPkgs.text
            ];
          };
        };
      };
    }