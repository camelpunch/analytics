{ pkgs, mkShell }:

mkShell {
  packages =
    let
      beamPackages = pkgs.beam.packagesWith pkgs.erlang_27;
    in
    [
      beamPackages.elixir_1_17
      beamPackages.erlang
    ];
}
