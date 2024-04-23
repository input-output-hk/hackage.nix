{
  "0.1.0.0" = {
    sha256 = "180c54a1b5db9905454386c8161e18cb8c8e733897e17b4f0c67390d3869f7de";
    revisions = {
      r0 = {
        nix = import ../hackage/data-embed-0.1.0.0-r0-faeb9a9acff5cc57b64082c1b26e2c917f75581790d530004f2ec58299cb3935.nix;
        revNum = 0;
        sha256 = "faeb9a9acff5cc57b64082c1b26e2c917f75581790d530004f2ec58299cb3935";
      };
      r1 = {
        nix = import ../hackage/data-embed-0.1.0.0-r1-aef45fcbc04c54bfc510764dcdf5703f89d72eca22f040a78e1c2e26fd9752bf.nix;
        revNum = 1;
        sha256 = "aef45fcbc04c54bfc510764dcdf5703f89d72eca22f040a78e1c2e26fd9752bf";
      };
      r2 = {
        nix = import ../hackage/data-embed-0.1.0.0-r2-be225ef3940d3f970c227447643ffa328b4f2aa8a87365fa8fdf1eeab59ba130.nix;
        revNum = 2;
        sha256 = "be225ef3940d3f970c227447643ffa328b4f2aa8a87365fa8fdf1eeab59ba130";
      };
      default = "r2";
    };
  };
}