example from CommandLine

apiVersion: v1
kind: Pod
metadata:
 name: sample-app
 labels:
  app: sample-app
spec:
 containers:
  - name: my_app
    image: redis
    env:
    - name: somename
      valueFrom:
        configMapKeyRef:
          name: my-config-new
          key: special-value



pass as args use 
args: ["$(somename)"]