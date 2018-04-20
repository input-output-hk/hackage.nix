{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tn";
          version = "1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "tn - a simple daily journal program\nCopyright (C) 2015 Peter Harpending\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 3 of the License, or\n(at your option) any later version.\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <http://www.gnu.org/licenses/>.";
        maintainer = "Peter Harpending <peter@harpending.org>";
        author = "Peter Harpending";
        homepage = "";
        url = "";
        synopsis = "A simple daily journal program";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          tn = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.safe
              hsPkgs.text
              hsPkgs.time
              hsPkgs.yaml
            ];
          };
        };
      };
    }