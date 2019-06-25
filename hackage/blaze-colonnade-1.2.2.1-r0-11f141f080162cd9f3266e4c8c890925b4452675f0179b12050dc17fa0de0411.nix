{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "blaze-colonnade"; version = "1.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "blaze-html backend for colonnade";
      description = "This library provides a backend for using blaze-html with colonnade.\nIt generates standard HTML tables with `<table>`, `<tbody>`, `<thead>`,\n`<tr>`, `<th>`, and `<td>`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colonnade)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.profunctors)
          (hsPkgs.text)
          ];
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.colonnade) (hsPkgs.doctest) ];
          };
        };
      };
    }