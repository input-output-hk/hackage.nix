{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diff-gestalt";
          version = "0.2.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "none";
        maintainer = "chrismwendt@gmail.com";
        author = "Chris Wendt";
        homepage = "http://github.com/chrismwendt/diff-gestalt";
        url = "";
        synopsis = "A diff algorithm based on recursive longest common substrings";
        description = "This is a diff algorithm based on recursive longest common substrings. A description of the algorithm itself can be found at http://collaboration.cmc.ec.gc.ca/science/rpn/biblio/ddj/Website/articles/DDJ/1988/8807/8807c/8807c.htm";
        buildType = "Simple";
      };
      components = {
        diff-gestalt = {
          depends  = [
            hsPkgs.base
            hsPkgs.Diff
            hsPkgs.string-similarity
            hsPkgs.KMP
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          diff-gestalt-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.Diff
              hsPkgs.diff-gestalt
            ];
          };
        };
      };
    }