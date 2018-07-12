{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "temporary-resourcet";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2003-2006, Isaac Jones\n(c) 2005-2009, Duncan Coutts\n(c) 2014, Thomas Tuegel";
        maintainer = "Thomas Tuegel <ttuegel@gmail.com>";
        author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>\nThomas Tuegel <ttuegel@gmail.com>";
        homepage = "http://www.github.com/ttuegel/temporary-resourcet";
        url = "";
        synopsis = "Portable temporary files and directories with automatic deletion";
        description = "The functions for creating temporary files and directories in the base\nlibrary are quite limited. The @unixutils@ package contains some good ones,\nbut they aren't portable to Windows.\n\nThis library repackages the Cabal implementations of its own temporary file\nand folder functions so that you can use them without linking against Cabal\nor depending on it being installed.\n\nThis library provides the same functionality as the @temporary@ package, but\nuses @resourcet@ to provide automatic deletion without nesting @withTempFile@.";
        buildType = "Simple";
      };
      components = {
        "temporary-resourcet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.resourcet
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          "test-temporary-resourcet" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.resourcet
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.temporary-resourcet
              hsPkgs.transformers
            ];
          };
        };
      };
    }