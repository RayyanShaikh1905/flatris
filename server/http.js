// @flow

export function startServer(server: net$Server, port: number) {
  server.listen(port, '0.0.0.0', err => {
    if (err) throw err;
    console.log(`> Ready on http://0.0.0.0:${port}`);
  });
}