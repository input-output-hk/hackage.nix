{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      bibutils = true;
      hexpat = true;
      embed_data_files = false;
      unicode_collation = false;
      test_citeproc = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-citeproc"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Andrea Rossato";
      homepage = "";
      url = "";
      synopsis = "Supports using pandoc with citeproc";
      description = "The pandoc-citeproc library exports functions for\nusing the citeproc system with pandoc.  It relies on\nciteproc-hs, a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here: <http://citationstyles.org/>.\n\nCurrently this package includes a copy of the citeproc-hs\ncode. When citeproc-hs is updated to be compatible,\nthis package will simply depend on citeproc-hs.\n\nThis package also contains an executable: pandoc-citeproc,\nwhich works as a pandoc filter (pandoc >= 1.12), and\nalso has a mode for converting bibliographic databases\na YAML format suitable for inclusion in pandoc YAML\nmetadata.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.pandoc-types)
          (hsPkgs.tagsoup)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.texmath)
          (hsPkgs.split)
          (hsPkgs.yaml)
          (hsPkgs.pandoc)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs.hs-bibutils)) ++ (if flags.hexpat
          then [ (hsPkgs.hexpat) ]
          else [ (hsPkgs.xml) ])) ++ (if flags.unicode_collation
          then [ (hsPkgs.text) (hsPkgs.text-icu) ]
          else [
            (hsPkgs.rfc5051)
            ])) ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.parsec)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            ]
          else [ (hsPkgs.base) ]);
        };
      exes = {
        "pandoc-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.pandoc-types)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        "test-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "test-pandoc-citeproc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }