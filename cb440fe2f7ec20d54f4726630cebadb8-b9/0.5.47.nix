{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "b9";
          version = "0.5.47";
        };
        license = "MIT";
        copyright = "2015, 2016, 2017, 2018 Sven Heyll <svh@posteo.de>";
        maintainer = "svh@posteo.de";
        author = "Sven Heyll <svh@posteo.de>";
        homepage = "https://github.com/sheyll/b9-vm-image-builder";
        url = "";
        synopsis = "A tool and library for building virtual machine images.";
        description = "Build virtual machine images for vm-deployments; resize,\nun-partition, create from scratch or convert disk image\nfiles in a variety of formats; assemble and generate all\nassociated files from templates and regular files.\nVM images can further be modifed through scripts, which are\nexecuted in LXC containers into which the vm-images as well\nas arbitrary directories from the host are mounted.\nAll assembled files can also be accessed by vm build\nscripts through a special directory mounted in the build\ncontainer, and/or can be written to directories, ISO- or\nVFAT-images.\nThe ISO/VFAT images that B9 creates are compatible to\n'cloud-init's 'NoCloud' data source;\nB9 is also very well suited for compiling in a\ncontainerized environment. For these applications, the\nimages can be marked as 'Transient' to indicate no further\ninterest in the VM-image itself, and B9 will discard them\nafter the build.\nB9 will never over-write source files, not even large\nvm-image files - there is no intended way to modify a\nsource vm-image file 'in-place'.\nB9 operates in random build directories, which are\ndiscarded when the build exists.";
        buildType = "Simple";
      };
      components = {
        b9 = {
          depends  = [
            hsPkgs.ConfigFile
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.pretty-show
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.random
            hsPkgs.shake
            hsPkgs.syb
            hsPkgs.template
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
            hsPkgs.bifunctors
            hsPkgs.free
            hsPkgs.boxes
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        exes = {
          b9c = {
            depends  = [
              hsPkgs.b9
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.lens
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.b9
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.yaml
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.bytestring
              hsPkgs.text
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }