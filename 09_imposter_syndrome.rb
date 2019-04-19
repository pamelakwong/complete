require "byebug"
def imposter_syndrome(overwhelming)
    return "itsokay" if overwhelming == "itsokay"
    imposter_syndrome(overwhelming[1..-1])
end

# debugger
p imposter_syndrome("IamnotgoodenoughIamnotgoodenoughIamnotgoodenoughIamnotgoodenoughitsokay")
p imposter_syndrome("Iamnotgoodenough" * 10 + "itsokay")
p imposter_syndrome("Iamnotgoodenough" * 100 + "itsokay")