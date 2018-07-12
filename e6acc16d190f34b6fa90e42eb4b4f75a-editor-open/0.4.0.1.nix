{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "editor-open";
          version = "0.4.0.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2015 Peter Harpending";
        maintainer = "peter@harpending.org";
        author = "Peter Harpending";
        homepage = "https://github.com/pharpend/editor-open";
        url = "";
        synopsis = "Open the user's \$EDITOR for text input.";
        description = "You know when you run @git commit@, and an editor pops open so you can enter a\ncommit message? This is a Haskell library that does that.\n\nThis library isn't very portable. It relies on the @\$EDITOR@ environment\nvariable. The concept only exists on *nix systems.";
        buildType = "Simple";
      };
      components = {
        "editor-open" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.unix
          ];
        };
        exes = {
          "editor-open-test_yaml_file" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.editor-open
            ];
          };
          "editor-open-test_yaml_file_conduit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.editor-open
              hsPkgs.resourcet
            ];
          };
        };
      };
    }