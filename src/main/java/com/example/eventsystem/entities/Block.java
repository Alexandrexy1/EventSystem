package com.example.eventsystem.entities;

import jakarta.persistence.*;

import java.time.Instant;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity(name = "tb_block")
public class Block {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant start;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant ending;

    @ManyToMany
    @JoinTable(name = "tb_block_activity",
               joinColumns = @JoinColumn(name = "block_id"),
               inverseJoinColumns = @JoinColumn(name = "activity_id"))
    private Set<Activity> activities = new HashSet<>();

    public Block(Instant start, Instant ending) {
        this.start = start;
        this.ending = ending;
    }

    public Long getId() {
        return id;
    }

    public Instant getStart() {
        return start;
    }

    public void setStart(Instant start) {
        this.start = start;
    }

    public Instant getEnding() {
        return ending;
    }

    public void setEnding(Instant ending) {
        this.ending = ending;
    }

    public Set<Activity> getActivities() {
        return activities;
    }

    public void setActivities(Set<Activity> activities) {
        this.activities = activities;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Block block = (Block) o;
        return Objects.equals(id, block.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}
