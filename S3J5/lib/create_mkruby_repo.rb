# Creer un Gemfile et ajouter les gem dont on a besoin


def create_repo_project
    if ARGV.length == 0 
        system("echo \n")
        system("echo \n")
        system("echo \"\tmkruby command must be followed by a repo name...\"")
        system("echo \n")
        system("echo \n")
        return false
    elsif ARGV.length == 1 
        system("mkdir "+ARGV[0].strip.sub(" ","_"))
        system("echo 'Creation of the repository: '"+ARGV[0].strip.sub(" ","_"))
        Dir.chdir ARGV[0].strip.sub(" ","_")
    else
        system("mkdir "+ARGV.join("_"))
        system("echo 'Creation of the repository: '"+ARGV.join("_"))
        Dir.chdir ARGV.join("_")
    end
end

def create_gemfile_and_install

    system("echo \"Creation of Gemfile...\"")
    system("echo \"source 'https://rubygems.org'\">> Gemfile")
    system("echo \"ruby '2.7.1'\">> Gemfile")
    system("echo \"gem 'rspec'\">> Gemfile")
    system("echo \"Installation of gems...\"")
    system("bundle install")

end

def create_lib_repo
    system("mkdir lib")
end

def rspec_init
    system("rspec --init")
end

def read_me_file
    system("echo \"Programme en ruby\">> Readme.md")
end

def create_project
    if create_repo_project != false
        create_gemfile_and_install
        create_lib_repo
        rspec_init
        read_me_file
    end
end

create_project