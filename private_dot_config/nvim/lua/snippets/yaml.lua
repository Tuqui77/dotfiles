local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {

  -- Deployment kubernetes
  s("kdep", {
    t({
      "apiVersion: apps/v1",
      "kind: Deployment",
      "metadata:",
      "  name: ",
    }),
    i(1, "my-app"),
    t({
      "",
      "  labels:",
      "    app: ",
    }),
    i(1),
    t({
      "",
      "spec:",
      "  replicas: ",
    }),
    i(2, "3"),
    t({
      "",
      "  selector:",
      "    matchLabels:",
      "      app: ",
    }),
    i(1),
    t({
      "",
      "  template:",
      "    metadata:",
      "      labels:",
      "        app: ",
    }),
    i(1),
    t({
      "",
      "    spec:",
      "      containers:",
      "      - name: ",
    }),
    i(1),
    t({
      "",
      "        image: ",
    }),
    i(3, "nginx:latest"),
    t({
      "",
      "        ports:",
      "        - containerPort: ",
    }),
    i(4, "80"),
  }),

  -- Servicio kubernetes
  s("ksvc", {
    t({
      "apiVersion: v1",
      "kind: Service",
      "metadata:",
      "  name: ",
    }),
    i(1, "my-service"),
    t({
      "",
      "spec:",
      "  selector:",
      "    app: ",
    }),
    i(2, "my-app"),
    t({
      "",
      "  ports:",
      "    - protocol: TCP",
      "      port: ",
    }),
    i(3, "80"),
    t({
      "",
      "      targetPort: ",
    }),
    i(4, "80"),
    t({
      "",
      "  type: ",
    }),
    i(5, "ClusterIP"),
  }),

  -- Sercreto kubernetes
  s("ksec", {
    t({
      "apiVersion: v1",
      "kind: Secret",
      "metadata:",
      "  name: ",
    }),
    i(1, "my-secret"),
    t({
      "",
      "  namespace: ",
    }),
    i(2, "namespace"),
    t({
      "",
      "type: Opaque",
      "data:",
      "  ",
    }),
    i(3, "key"),
    t(": "),
    i(4, "base64-value"),
  }),

  -- Namespace kubernetes
  s("kns", {
    t({
      "apiVersion: v1",
      "kind: Namespace",
      "metadata:",
      "  name: ",
    }),
    i(1, "my-namespace"),
  }),

  -- Archivo kustomization
  s("kustomization", {
    t({
      "apiVersion: kustomize.config.k8s.io/v1beta1",
      "kind: Kustomization",
      "",
      "resources:",
      "  - ",
    }),
    i(1, "resource"),
  }),

  -- Application ArgoCD
  s("app", {
    t({
      "apiVersion: argoproj.io/v1alpha1",
      "kind: Application",
      "metadata:",
      " name: ",
    }),
    i(1, "name"),
    t({
      "",
      " namespace: argocd",
      "spec:",
      " project: default",
      " source:",
      "   repoURL: https://github.com/Tuqui77/Homelab.git",
      "   targetRevision: Main",
      "   path: ",
    }),
    i(2, "path"),
    t({
      "",
      " destination:",
      "   server: https://kubernetes.default.svc",
      "   namespace: ",
    }),
    i(3, "namespace"),
    t({
      "",
      " syncPolicy:",
      "   automated:",
      "     prune: true",
      "     selfHeal: true",
    }),
  }),

  -- HTTPRoute
  s("httproute", {
    t({
      "apiVersion: gateway.networking.k8s.io/v1",
      "kind: HTTPRoute",
      "metadata:",
      " name: ",
    }),
    i(1, "name"),
    t({
      "",
      " namespace: ",
    }),
    i(2, "namespace"),
    t({
      "",
      "spec:",
      " hostnames:",
      " - ",
    }),
    i(3, "route"),
    t({
      "",
      " parentRefs:",
      " - name: ",
    }),
    i(4, "gateway"),
    t({
      "",
      "   namespace: ",
    }),
    i(5, "gatewayNamespace"),
    t({
      "",
      "   sectionName: ",
    }),
    i(6, "sectionName"),
    t({
      "",
      " rules:",
      "  - backendRefs:",
      "    - name: ",
    }),
    i(7, "service"),
    t({
      "",
      "      port: ",
    }),
    i(8, "port"),
  }),

  -- PersistentVolumeClaim
  s("pvc", {
    t({
      "apiVersion: v1",
      "kind: PersistentVolumeClaim",
      "metadata:",
      "  name: ",
    }),
    i(1, "name"),
    t({
      "",
      "  namespace: ",
    }),
    i(2, "namespace"),
    t({
      "",
      "spec:",
      "  accessModes:",
      "    - ",
    }),
    i(3, "ReadWriteOnce"),
    t({
      "",
      "  storageClassName: ",
    }),
    i(4, "nfs-homelab"),
    t({
      "",
      "  resources:",
      "    requests:",
      "      storage: ",
    }),
    i(0, "10Gi"),
  }),
}
