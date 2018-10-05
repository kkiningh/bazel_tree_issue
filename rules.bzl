def _make_dir(ctx):
  d = ctx.actions.declare_directory(ctx.attr.name)
  ctx.actions.run_shell(
      command = "mkdir -p {d}".format(d=d.path),
      outputs = [d],
  )

  return [DefaultInfo(files = depset([d]))]

make_dir = rule(
  attrs = { },
  implementation = _make_dir,
)
