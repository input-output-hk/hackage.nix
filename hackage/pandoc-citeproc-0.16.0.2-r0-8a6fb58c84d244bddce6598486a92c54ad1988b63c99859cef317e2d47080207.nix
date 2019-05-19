{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      bibutils = true;
      embed_data_files = false;
      unicode_collation = false;
      test_citeproc = false;
      debug = false;
      static = false;
      };
    package = {
      specVersion = "1.12";
      identifier = { name = "pandoc-citeproc"; version = "0.16.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Andrea Rossato";
      homepage = "https://github.com/jgm/pandoc-citeproc";
      url = "";
      synopsis = "Supports using pandoc with citeproc";
      description = "The pandoc-citeproc library supports automatic\ngeneration of citations and a bibliography in pandoc\ndocuments using the Citation Style Language (CSL)\nmacro language. More details on CSL can be found at\n<http://citationstyles.org/>.\n\nIn addition to a library, the package includes\nan executable, pandoc-citeproc, which works as a pandoc\nfilter and also has a mode for converting bibliographic\ndatabases into CSL JSON and pandoc YAML metadata formats.\n\npandoc-citeproc originated as a fork of Andrea\nRossato's citeproc-hs.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.pandoc-types)
          (hsPkgs.pandoc)
          (hsPkgs.tagsoup)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.xml-conduit)
          (hsPkgs.unordered-containers)
          (hsPkgs.data-default)
          (hsPkgs.setenv)
          (hsPkgs.split)
          (hsPkgs.yaml)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs.base-compat)) ++ (pkgs.lib).optional (flags.debug) (hsPkgs.pretty-show)) ++ (pkgs.lib).optional (flags.bibutils) (hsPkgs.hs-bibutils)) ++ (pkgs.lib).optional (flags.embed_data_files) (hsPkgs.file-embed)) ++ (if flags.unicode_collation
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
          depends = ([
            (hsPkgs.base)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.syb)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs.base-compat);
          };
        "test-citeproc" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            (hsPkgs.containers)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs.base-compat);
          build-tools = [
            (hsPkgs.buildPackages.pandoc-citeproc or (pkgs.buildPackages.pandoc-citeproc))
            ];
          };
        };
      tests = {
        "test-pandoc-citeproc" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.pandoc-types)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.yaml)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs.base-compat);
          build-tools = [
            (hsPkgs.buildPackages.pandoc-citeproc or (pkgs.buildPackages.pandoc-citeproc))
            ];
          };
        };
      };
    }