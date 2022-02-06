desc "Build notebook image"
task "build" do
  image_tag = `git rev-parse HEAD`[...12]
  sh "docker build -t dockerhat/notebook:#{image_tag} ."
end

desc "Push notebook image to Dockerhub"
task "push" do
  image_tag = `git rev-parse HEAD`[...12]
  sh "docker push dockerhat/notebook:#{image_tag}"
end

desc "Build and push notebook image to Dockerhub"
task :default => [:build, :push]