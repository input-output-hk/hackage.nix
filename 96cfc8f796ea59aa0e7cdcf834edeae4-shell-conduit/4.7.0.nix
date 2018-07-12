{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "shell-conduit";
          version = "4.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014-2017 Chris Done";
        maintainer = "Sibi Prabakaran <sibi@psibi.in>";
        author = "Chris Done";
        homepage = "https://github.com/psibi/shell-conduit";
        url = "";
        synopsis = "Write shell scripts with Conduit";
        description = "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.";
        buildType = "Simple";
      };
      components = {
        "shell-conduit" = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.monads-tf
            hsPkgs.process
            hsPkgs.resourcet
            hsPkgs.unliftio
            hsPkgs.semigroups
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shell-conduit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.template-haskell
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.conduit-extra
            ];
          };
        };
      };
    }