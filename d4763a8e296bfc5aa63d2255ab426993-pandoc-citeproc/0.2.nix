{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      bibutils = true;
      network = true;
      hexpat = true;
      embed_data_files = false;
      unicode_collation = false;
      test_citeproc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "pandoc-citeproc";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane, Andrea Rossato";
        homepage = "";
        url = "";
        synopsis = "Supports using pandoc with citeproc";
        description = "The pandoc-citeproc library exports functions for\nusing the citeproc system with pandoc.  It relies on\nciteproc-hs, a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here: <http://citationstyles.org/>.\n\nCurrently this package includes a copy of the citeproc-hs\ncode. When citeproc-hs is updated to be compatible,\nthis package will simply depend on citeproc-hs.\n\nThis package also contains two executables: pandoc-citeproc,\nwhich works as a pandoc filter (pandoc >= 1.12), and\nbiblio2yaml, which converts bibliographic databases to\na yaml format suitable for inclusion in pandoc YAML\nmetadata.";
        buildType = "Custom";
      };
      components = {
        pandoc-citeproc = {
          depends  = (((([
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.pandoc-types
            hsPkgs.tagsoup
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.texmath
            hsPkgs.split
            hsPkgs.yaml
            hsPkgs.pandoc
          ] ++ pkgs.lib.optional _flags.bibutils hsPkgs.hs-bibutils) ++ pkgs.lib.optionals _flags.network [
            hsPkgs.network
            hsPkgs.HTTP
          ]) ++ (if _flags.hexpat
            then [ hsPkgs.hexpat ]
            else [
              hsPkgs.xml
            ])) ++ (if _flags.unicode_collation
            then [
              hsPkgs.text
              hsPkgs.text-icu
            ]
            else [
              hsPkgs.rfc5051
            ])) ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.parsec
              hsPkgs.old-locale
              hsPkgs.time
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          pandoc-citeproc = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc-citeproc
              hsPkgs.pandoc-types
              hsPkgs.aeson
            ];
          };
          biblio2yaml = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc-citeproc
              hsPkgs.yaml
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.filepath
            ];
          };
          test-citeproc = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson-pretty
              hsPkgs.aeson
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.pandoc-types
              hsPkgs.pandoc
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.pandoc-citeproc
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.yaml
              hsPkgs.containers
              hsPkgs.vector
            ];
          };
        };
        tests = {
          test-pandoc-citeproc = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson-pretty
              hsPkgs.aeson
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.pandoc-types
              hsPkgs.pandoc
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.pandoc-citeproc
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.yaml
            ];
          };
        };
      };
    }