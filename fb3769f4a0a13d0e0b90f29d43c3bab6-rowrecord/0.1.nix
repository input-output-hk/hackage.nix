{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "rowrecord";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Build records from lists of strings, as from CSV files.";
        description = "Given rows of @String@ data with column headings, this library will create\nvalues of user-defined record types.  Records can contain mandatory or\noptional fields of any type, subject to a class constraint.\nHeading names and and record construction code are derived using\nTemplate Haskell.\n\nOne use case for this library is parsing records from a CSV file.  A\nparser from CSV to @[[String]]@ is not included, but there are several\nsuitable packages on Hackage.\n\nThe emphasis of this library is on simplicity of use rather than performance.\nIt is likely to be suitable for a hundred thousand rows, but not many\nmillions.  A future version may support packed input formats like\n@ByteString@ or @Text@.  Suggestions and patches are welcome.";
        buildType = "Simple";
      };
      components = {
        rowrecord = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
          ];
        };
      };
    }