#!/usr/bin/env nextflow
nextflow.enable.dsl=2

// PIPELINES
include{ quality } from './pipelines/quality'

// Running pipelines
workflow {
    main:
    quality()
}