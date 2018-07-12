{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.2";
        identifier = {
          name = "hyraxAbif";
          version = "0.2.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "2018 HyraxBio";
        maintainer = "andre@hyraxbio.co.za, andre@andrevdm.com";
        author = "HyraxBio";
        homepage = "https://github.com/hyraxbio/hyraxAbif/#readme";
        url = "";
        synopsis = "Modules for parsing, generating and manipulating AB1 files.";
        description = "This library provides functionality for parsing, modifying, writing and generating ABIF files\n<<docs/eg_multi_mix.png>>\n\nAny AB1 file conforming to the standard at <http://www6.appliedbiosystems.com/support/software_community/ABIF_File_Format.pdf> should be supported.\n\nThis library also support generating a minimal ABIF file from a FASTA input sequence.\n\nA basic terminal application that can dump and generate AB1s is included. See <https://github.com/hyraxbio/hyraxAbif/blob/master/app/Main.hs>\n\nSee\n\n* \"Hyrax.Abif.Generate\" for generate ABIF files from FASTA inputs\n* \"Hyrax.Abif.Read\" for parsing ABIF files\n* \"Hyrax.Abif.Write\" for creating/updating ABIF files\n* \"Hyrax.Abif\" for the core types\n* \"Examples\" for examples";
        buildType = "Simple";
      };
      components = {
        "hyraxAbif" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          "hyraxAbif-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hyraxAbif
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.hscolour
            ];
          };
        };
        tests = {
          "hyraxAbif-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hyraxAbif
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.hedgehog
            ];
          };
        };
      };
    }